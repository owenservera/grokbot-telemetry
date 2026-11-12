# sandbox_telemetry_parse — 2026-11-12 16:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2231452 lines=4939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4930 |
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
| `chromeBrowserPssKb` | {'int': 4930} |
| `chromeGpuPssKb` | {'int': 4930} |
| `chromeOtherPssKb` | {'int': 4930} |
| `chromeProcesses` | {'int': 4930} |
| `chromeProfiles` | {'int': 4930} |
| `chromeRendererMaxPssKb` | {'int': 4930} |
| `chromeRendererPssKb` | {'int': 4930} |
| `chromeRenderers` | {'int': 4930} |
| `chromeTabs` | {'int': 4930} |
| `chromeTabsProbedProfiles` | {'int': 4930} |
| `chromeUtilityPssKb` | {'int': 4930} |
| `desktopPssKb` | {'int': 4930} |
| `hostPssKb` | {'int': 4930} |
| `kind` | {'str': 4930} |
| `memAvailableKb` | {'int': 4930} |
| `memTotalKb` | {'int': 4930} |
| `otherPssKb` | {'int': 4930} |
| `processes` | {'int': 4930} |
| `pssFallbackProcesses` | {'int': 4930} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
