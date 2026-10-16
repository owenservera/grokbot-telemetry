# sandbox_telemetry_parse — 2026-10-16 16:40:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=635966 lines=2377
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1572 |
| `memory_sample` | 796 |
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
| `chromeBrowserPssKb` | {'int': 796} |
| `chromeGpuPssKb` | {'int': 796} |
| `chromeOtherPssKb` | {'int': 796} |
| `chromeProcesses` | {'int': 796} |
| `chromeProfiles` | {'int': 796} |
| `chromeRendererMaxPssKb` | {'int': 796} |
| `chromeRendererPssKb` | {'int': 796} |
| `chromeRenderers` | {'int': 796} |
| `chromeTabs` | {'int': 796} |
| `chromeTabsProbedProfiles` | {'int': 796} |
| `chromeUtilityPssKb` | {'int': 796} |
| `desktopPssKb` | {'int': 796} |
| `hostPssKb` | {'int': 796} |
| `kind` | {'str': 796} |
| `memAvailableKb` | {'int': 796} |
| `memTotalKb` | {'int': 796} |
| `otherPssKb` | {'int': 796} |
| `processes` | {'int': 796} |
| `pssFallbackProcesses` | {'int': 796} |

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
| `cpuMillicores` | {'int': 1569} |
| `display` | {'int': 1572} |
| `kind` | {'str': 1572} |
| `processes` | {'int': 1572} |
| `pssKb` | {'int': 1572} |
| `rendererMaxPssKb` | {'int': 1572} |
| `renderers` | {'int': 1572} |
| `tabs` | {'int': 1571} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
