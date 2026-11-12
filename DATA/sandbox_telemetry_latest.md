# sandbox_telemetry_parse — 2026-11-12 02:32:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1932738 lines=4279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4270 |
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
| `chromeBrowserPssKb` | {'int': 4270} |
| `chromeGpuPssKb` | {'int': 4270} |
| `chromeOtherPssKb` | {'int': 4270} |
| `chromeProcesses` | {'int': 4270} |
| `chromeProfiles` | {'int': 4270} |
| `chromeRendererMaxPssKb` | {'int': 4270} |
| `chromeRendererPssKb` | {'int': 4270} |
| `chromeRenderers` | {'int': 4270} |
| `chromeTabs` | {'int': 4270} |
| `chromeTabsProbedProfiles` | {'int': 4270} |
| `chromeUtilityPssKb` | {'int': 4270} |
| `desktopPssKb` | {'int': 4270} |
| `hostPssKb` | {'int': 4270} |
| `kind` | {'str': 4270} |
| `memAvailableKb` | {'int': 4270} |
| `memTotalKb` | {'int': 4270} |
| `otherPssKb` | {'int': 4270} |
| `processes` | {'int': 4270} |
| `pssFallbackProcesses` | {'int': 4270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
