# sandbox_telemetry_parse — 2026-10-16 02:48:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=10909 lines=39
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 17 |
| `chrome_profile_sample` | 13 |
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
| `chromeBrowserPssKb` | {'int': 17} |
| `chromeGpuPssKb` | {'int': 17} |
| `chromeOtherPssKb` | {'int': 17} |
| `chromeProcesses` | {'int': 17} |
| `chromeProfiles` | {'int': 17} |
| `chromeRendererMaxPssKb` | {'int': 17} |
| `chromeRendererPssKb` | {'int': 17} |
| `chromeRenderers` | {'int': 17} |
| `chromeTabs` | {'int': 17} |
| `chromeTabsProbedProfiles` | {'int': 17} |
| `chromeUtilityPssKb` | {'int': 17} |
| `desktopPssKb` | {'int': 17} |
| `hostPssKb` | {'int': 17} |
| `kind` | {'str': 17} |
| `memAvailableKb` | {'int': 17} |
| `memTotalKb` | {'int': 17} |
| `otherPssKb` | {'int': 17} |
| `processes` | {'int': 17} |
| `pssFallbackProcesses` | {'int': 17} |

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
| `cpuMillicores` | {'int': 11} |
| `display` | {'int': 13} |
| `kind` | {'str': 13} |
| `processes` | {'int': 13} |
| `pssKb` | {'int': 13} |
| `rendererMaxPssKb` | {'int': 13} |
| `renderers` | {'int': 13} |
| `tabs` | {'int': 13} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
