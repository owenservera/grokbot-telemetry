# sandbox_telemetry_parse — 2026-10-16 06:23:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=181755 lines=679
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 440 |
| `memory_sample` | 230 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 230} |
| `chromeGpuPssKb` | {'int': 230} |
| `chromeOtherPssKb` | {'int': 230} |
| `chromeProcesses` | {'int': 230} |
| `chromeProfiles` | {'int': 230} |
| `chromeRendererMaxPssKb` | {'int': 230} |
| `chromeRendererPssKb` | {'int': 230} |
| `chromeRenderers` | {'int': 230} |
| `chromeTabs` | {'int': 230} |
| `chromeTabsProbedProfiles` | {'int': 230} |
| `chromeUtilityPssKb` | {'int': 230} |
| `desktopPssKb` | {'int': 230} |
| `hostPssKb` | {'int': 230} |
| `kind` | {'str': 230} |
| `memAvailableKb` | {'int': 230} |
| `memTotalKb` | {'int': 230} |
| `otherPssKb` | {'int': 230} |
| `processes` | {'int': 230} |
| `pssFallbackProcesses` | {'int': 230} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 437} |
| `display` | {'int': 440} |
| `kind` | {'str': 440} |
| `processes` | {'int': 440} |
| `pssKb` | {'int': 440} |
| `rendererMaxPssKb` | {'int': 440} |
| `renderers` | {'int': 440} |
| `tabs` | {'int': 439} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
