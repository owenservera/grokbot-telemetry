# sandbox_telemetry_parse — 2026-11-10 08:23:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1056118 lines=2342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2333 |
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
| `chromeBrowserPssKb` | {'int': 2333} |
| `chromeGpuPssKb` | {'int': 2333} |
| `chromeOtherPssKb` | {'int': 2333} |
| `chromeProcesses` | {'int': 2333} |
| `chromeProfiles` | {'int': 2333} |
| `chromeRendererMaxPssKb` | {'int': 2333} |
| `chromeRendererPssKb` | {'int': 2333} |
| `chromeRenderers` | {'int': 2333} |
| `chromeTabs` | {'int': 2333} |
| `chromeTabsProbedProfiles` | {'int': 2333} |
| `chromeUtilityPssKb` | {'int': 2333} |
| `desktopPssKb` | {'int': 2333} |
| `hostPssKb` | {'int': 2333} |
| `kind` | {'str': 2333} |
| `memAvailableKb` | {'int': 2333} |
| `memTotalKb` | {'int': 2333} |
| `otherPssKb` | {'int': 2333} |
| `processes` | {'int': 2333} |
| `pssFallbackProcesses` | {'int': 2333} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
