# sandbox_telemetry_parse — 2026-11-12 20:22:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2312084 lines=5117
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5108 |
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
| `chromeBrowserPssKb` | {'int': 5108} |
| `chromeGpuPssKb` | {'int': 5108} |
| `chromeOtherPssKb` | {'int': 5108} |
| `chromeProcesses` | {'int': 5108} |
| `chromeProfiles` | {'int': 5108} |
| `chromeRendererMaxPssKb` | {'int': 5108} |
| `chromeRendererPssKb` | {'int': 5108} |
| `chromeRenderers` | {'int': 5108} |
| `chromeTabs` | {'int': 5108} |
| `chromeTabsProbedProfiles` | {'int': 5108} |
| `chromeUtilityPssKb` | {'int': 5108} |
| `desktopPssKb` | {'int': 5108} |
| `hostPssKb` | {'int': 5108} |
| `kind` | {'str': 5108} |
| `memAvailableKb` | {'int': 5108} |
| `memTotalKb` | {'int': 5108} |
| `otherPssKb` | {'int': 5108} |
| `processes` | {'int': 5108} |
| `pssFallbackProcesses` | {'int': 5108} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
