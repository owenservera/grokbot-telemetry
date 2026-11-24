# sandbox_telemetry_parse — 2026-11-24 07:39:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2189741 lines=4854
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4839 |
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
| `chromeBrowserPssKb` | {'int': 4839} |
| `chromeGpuPssKb` | {'int': 4839} |
| `chromeOtherPssKb` | {'int': 4839} |
| `chromeProcesses` | {'int': 4839} |
| `chromeProfiles` | {'int': 4839} |
| `chromeRendererMaxPssKb` | {'int': 4839} |
| `chromeRendererPssKb` | {'int': 4839} |
| `chromeRenderers` | {'int': 4839} |
| `chromeTabs` | {'int': 4839} |
| `chromeTabsProbedProfiles` | {'int': 4839} |
| `chromeUtilityPssKb` | {'int': 4839} |
| `desktopPssKb` | {'int': 4839} |
| `hostPssKb` | {'int': 4839} |
| `kind` | {'str': 4839} |
| `memAvailableKb` | {'int': 4839} |
| `memTotalKb` | {'int': 4839} |
| `otherPssKb` | {'int': 4839} |
| `processes` | {'int': 4839} |
| `pssFallbackProcesses` | {'int': 4839} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
