# sandbox_telemetry_parse — 2026-10-16 12:06:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=430512 lines=1609
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1060 |
| `memory_sample` | 540 |
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
| `chromeBrowserPssKb` | {'int': 540} |
| `chromeGpuPssKb` | {'int': 540} |
| `chromeOtherPssKb` | {'int': 540} |
| `chromeProcesses` | {'int': 540} |
| `chromeProfiles` | {'int': 540} |
| `chromeRendererMaxPssKb` | {'int': 540} |
| `chromeRendererPssKb` | {'int': 540} |
| `chromeRenderers` | {'int': 540} |
| `chromeTabs` | {'int': 540} |
| `chromeTabsProbedProfiles` | {'int': 540} |
| `chromeUtilityPssKb` | {'int': 540} |
| `desktopPssKb` | {'int': 540} |
| `hostPssKb` | {'int': 540} |
| `kind` | {'str': 540} |
| `memAvailableKb` | {'int': 540} |
| `memTotalKb` | {'int': 540} |
| `otherPssKb` | {'int': 540} |
| `processes` | {'int': 540} |
| `pssFallbackProcesses` | {'int': 540} |

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
| `cpuMillicores` | {'int': 1057} |
| `display` | {'int': 1060} |
| `kind` | {'str': 1060} |
| `processes` | {'int': 1060} |
| `pssKb` | {'int': 1060} |
| `rendererMaxPssKb` | {'int': 1060} |
| `renderers` | {'int': 1060} |
| `tabs` | {'int': 1059} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
