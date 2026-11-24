# sandbox_telemetry_parse — 2026-11-24 08:55:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2214163 lines=4908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4893 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4893} |
| `chromeGpuPssKb` | {'int': 4893} |
| `chromeOtherPssKb` | {'int': 4893} |
| `chromeProcesses` | {'int': 4893} |
| `chromeProfiles` | {'int': 4893} |
| `chromeRendererMaxPssKb` | {'int': 4893} |
| `chromeRendererPssKb` | {'int': 4893} |
| `chromeRenderers` | {'int': 4893} |
| `chromeTabs` | {'int': 4893} |
| `chromeTabsProbedProfiles` | {'int': 4893} |
| `chromeUtilityPssKb` | {'int': 4893} |
| `desktopPssKb` | {'int': 4893} |
| `hostPssKb` | {'int': 4893} |
| `kind` | {'str': 4893} |
| `memAvailableKb` | {'int': 4893} |
| `memTotalKb` | {'int': 4893} |
| `otherPssKb` | {'int': 4893} |
| `processes` | {'int': 4893} |
| `pssFallbackProcesses` | {'int': 4893} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
