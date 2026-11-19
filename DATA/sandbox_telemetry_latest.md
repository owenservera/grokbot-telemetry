# sandbox_telemetry_parse — 2026-11-19 06:19:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1151584 lines=2554
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2545 |
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
| `chromeBrowserPssKb` | {'int': 2545} |
| `chromeGpuPssKb` | {'int': 2545} |
| `chromeOtherPssKb` | {'int': 2545} |
| `chromeProcesses` | {'int': 2545} |
| `chromeProfiles` | {'int': 2545} |
| `chromeRendererMaxPssKb` | {'int': 2545} |
| `chromeRendererPssKb` | {'int': 2545} |
| `chromeRenderers` | {'int': 2545} |
| `chromeTabs` | {'int': 2545} |
| `chromeTabsProbedProfiles` | {'int': 2545} |
| `chromeUtilityPssKb` | {'int': 2545} |
| `desktopPssKb` | {'int': 2545} |
| `hostPssKb` | {'int': 2545} |
| `kind` | {'str': 2545} |
| `memAvailableKb` | {'int': 2545} |
| `memTotalKb` | {'int': 2545} |
| `otherPssKb` | {'int': 2545} |
| `processes` | {'int': 2545} |
| `pssFallbackProcesses` | {'int': 2545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
