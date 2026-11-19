# sandbox_telemetry_parse — 2026-11-19 10:24:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1228449 lines=2724
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2715 |
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
| `chromeBrowserPssKb` | {'int': 2715} |
| `chromeGpuPssKb` | {'int': 2715} |
| `chromeOtherPssKb` | {'int': 2715} |
| `chromeProcesses` | {'int': 2715} |
| `chromeProfiles` | {'int': 2715} |
| `chromeRendererMaxPssKb` | {'int': 2715} |
| `chromeRendererPssKb` | {'int': 2715} |
| `chromeRenderers` | {'int': 2715} |
| `chromeTabs` | {'int': 2715} |
| `chromeTabsProbedProfiles` | {'int': 2715} |
| `chromeUtilityPssKb` | {'int': 2715} |
| `desktopPssKb` | {'int': 2715} |
| `hostPssKb` | {'int': 2715} |
| `kind` | {'str': 2715} |
| `memAvailableKb` | {'int': 2715} |
| `memTotalKb` | {'int': 2715} |
| `otherPssKb` | {'int': 2715} |
| `processes` | {'int': 2715} |
| `pssFallbackProcesses` | {'int': 2715} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
