# sandbox_telemetry_parse — 2026-11-20 10:26:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1675951 lines=3715
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3704 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3704} |
| `chromeGpuPssKb` | {'int': 3704} |
| `chromeOtherPssKb` | {'int': 3704} |
| `chromeProcesses` | {'int': 3704} |
| `chromeProfiles` | {'int': 3704} |
| `chromeRendererMaxPssKb` | {'int': 3704} |
| `chromeRendererPssKb` | {'int': 3704} |
| `chromeRenderers` | {'int': 3704} |
| `chromeTabs` | {'int': 3704} |
| `chromeTabsProbedProfiles` | {'int': 3704} |
| `chromeUtilityPssKb` | {'int': 3704} |
| `desktopPssKb` | {'int': 3704} |
| `hostPssKb` | {'int': 3704} |
| `kind` | {'str': 3704} |
| `memAvailableKb` | {'int': 3704} |
| `memTotalKb` | {'int': 3704} |
| `otherPssKb` | {'int': 3704} |
| `processes` | {'int': 3704} |
| `pssFallbackProcesses` | {'int': 3704} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
