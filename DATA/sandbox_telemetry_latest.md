# sandbox_telemetry_parse — 2026-10-17 01:02:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=984935 lines=3680
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2440 |
| `memory_sample` | 1231 |
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
| `chromeBrowserPssKb` | {'int': 1231} |
| `chromeGpuPssKb` | {'int': 1231} |
| `chromeOtherPssKb` | {'int': 1231} |
| `chromeProcesses` | {'int': 1231} |
| `chromeProfiles` | {'int': 1231} |
| `chromeRendererMaxPssKb` | {'int': 1231} |
| `chromeRendererPssKb` | {'int': 1231} |
| `chromeRenderers` | {'int': 1231} |
| `chromeTabs` | {'int': 1231} |
| `chromeTabsProbedProfiles` | {'int': 1231} |
| `chromeUtilityPssKb` | {'int': 1231} |
| `desktopPssKb` | {'int': 1231} |
| `hostPssKb` | {'int': 1231} |
| `kind` | {'str': 1231} |
| `memAvailableKb` | {'int': 1231} |
| `memTotalKb` | {'int': 1231} |
| `otherPssKb` | {'int': 1231} |
| `processes` | {'int': 1231} |
| `pssFallbackProcesses` | {'int': 1231} |

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
| `cpuMillicores` | {'int': 2437} |
| `display` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `processes` | {'int': 2440} |
| `pssKb` | {'int': 2440} |
| `rendererMaxPssKb` | {'int': 2440} |
| `renderers` | {'int': 2440} |
| `tabs` | {'int': 2439} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
