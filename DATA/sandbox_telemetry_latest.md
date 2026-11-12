# sandbox_telemetry_parse — 2026-11-12 15:25:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2195212 lines=4859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4850 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4850} |
| `chromeGpuPssKb` | {'int': 4850} |
| `chromeOtherPssKb` | {'int': 4850} |
| `chromeProcesses` | {'int': 4850} |
| `chromeProfiles` | {'int': 4850} |
| `chromeRendererMaxPssKb` | {'int': 4850} |
| `chromeRendererPssKb` | {'int': 4850} |
| `chromeRenderers` | {'int': 4850} |
| `chromeTabs` | {'int': 4850} |
| `chromeTabsProbedProfiles` | {'int': 4850} |
| `chromeUtilityPssKb` | {'int': 4850} |
| `desktopPssKb` | {'int': 4850} |
| `hostPssKb` | {'int': 4850} |
| `kind` | {'str': 4850} |
| `memAvailableKb` | {'int': 4850} |
| `memTotalKb` | {'int': 4850} |
| `otherPssKb` | {'int': 4850} |
| `processes` | {'int': 4850} |
| `pssFallbackProcesses` | {'int': 4850} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
