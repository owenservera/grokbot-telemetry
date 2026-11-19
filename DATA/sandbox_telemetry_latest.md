# sandbox_telemetry_parse — 2026-11-19 04:07:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1112696 lines=2468
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2459 |
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
| `chromeBrowserPssKb` | {'int': 2459} |
| `chromeGpuPssKb` | {'int': 2459} |
| `chromeOtherPssKb` | {'int': 2459} |
| `chromeProcesses` | {'int': 2459} |
| `chromeProfiles` | {'int': 2459} |
| `chromeRendererMaxPssKb` | {'int': 2459} |
| `chromeRendererPssKb` | {'int': 2459} |
| `chromeRenderers` | {'int': 2459} |
| `chromeTabs` | {'int': 2459} |
| `chromeTabsProbedProfiles` | {'int': 2459} |
| `chromeUtilityPssKb` | {'int': 2459} |
| `desktopPssKb` | {'int': 2459} |
| `hostPssKb` | {'int': 2459} |
| `kind` | {'str': 2459} |
| `memAvailableKb` | {'int': 2459} |
| `memTotalKb` | {'int': 2459} |
| `otherPssKb` | {'int': 2459} |
| `processes` | {'int': 2459} |
| `pssFallbackProcesses` | {'int': 2459} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
