# sandbox_telemetry_parse — 2026-11-24 11:58:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2275201 lines=5043
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5028 |
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
| `chromeBrowserPssKb` | {'int': 5028} |
| `chromeGpuPssKb` | {'int': 5028} |
| `chromeOtherPssKb` | {'int': 5028} |
| `chromeProcesses` | {'int': 5028} |
| `chromeProfiles` | {'int': 5028} |
| `chromeRendererMaxPssKb` | {'int': 5028} |
| `chromeRendererPssKb` | {'int': 5028} |
| `chromeRenderers` | {'int': 5028} |
| `chromeTabs` | {'int': 5028} |
| `chromeTabsProbedProfiles` | {'int': 5028} |
| `chromeUtilityPssKb` | {'int': 5028} |
| `desktopPssKb` | {'int': 5028} |
| `hostPssKb` | {'int': 5028} |
| `kind` | {'str': 5028} |
| `memAvailableKb` | {'int': 5028} |
| `memTotalKb` | {'int': 5028} |
| `otherPssKb` | {'int': 5028} |
| `processes` | {'int': 5028} |
| `pssFallbackProcesses` | {'int': 5028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
