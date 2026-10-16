# sandbox_telemetry_parse — 2026-10-16 13:17:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=477872 lines=1786
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1178 |
| `memory_sample` | 599 |
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
| `chromeBrowserPssKb` | {'int': 599} |
| `chromeGpuPssKb` | {'int': 599} |
| `chromeOtherPssKb` | {'int': 599} |
| `chromeProcesses` | {'int': 599} |
| `chromeProfiles` | {'int': 599} |
| `chromeRendererMaxPssKb` | {'int': 599} |
| `chromeRendererPssKb` | {'int': 599} |
| `chromeRenderers` | {'int': 599} |
| `chromeTabs` | {'int': 599} |
| `chromeTabsProbedProfiles` | {'int': 599} |
| `chromeUtilityPssKb` | {'int': 599} |
| `desktopPssKb` | {'int': 599} |
| `hostPssKb` | {'int': 599} |
| `kind` | {'str': 599} |
| `memAvailableKb` | {'int': 599} |
| `memTotalKb` | {'int': 599} |
| `otherPssKb` | {'int': 599} |
| `processes` | {'int': 599} |
| `pssFallbackProcesses` | {'int': 599} |

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
| `cpuMillicores` | {'int': 1175} |
| `display` | {'int': 1178} |
| `kind` | {'str': 1178} |
| `processes` | {'int': 1178} |
| `pssKb` | {'int': 1178} |
| `rendererMaxPssKb` | {'int': 1178} |
| `renderers` | {'int': 1178} |
| `tabs` | {'int': 1177} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
