# sandbox_telemetry_parse — 2026-10-27 07:38:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=397812 lines=883
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 878 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 878} |
| `chromeGpuPssKb` | {'int': 878} |
| `chromeOtherPssKb` | {'int': 878} |
| `chromeProcesses` | {'int': 878} |
| `chromeProfiles` | {'int': 878} |
| `chromeRendererMaxPssKb` | {'int': 878} |
| `chromeRendererPssKb` | {'int': 878} |
| `chromeRenderers` | {'int': 878} |
| `chromeTabs` | {'int': 878} |
| `chromeTabsProbedProfiles` | {'int': 878} |
| `chromeUtilityPssKb` | {'int': 878} |
| `desktopPssKb` | {'int': 878} |
| `hostPssKb` | {'int': 878} |
| `kind` | {'str': 878} |
| `memAvailableKb` | {'int': 878} |
| `memTotalKb` | {'int': 878} |
| `otherPssKb` | {'int': 878} |
| `processes` | {'int': 878} |
| `pssFallbackProcesses` | {'int': 878} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
