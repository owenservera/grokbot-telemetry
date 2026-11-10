# sandbox_telemetry_parse — 2026-11-10 01:10:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=917712 lines=2036
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2027 |
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
| `chromeBrowserPssKb` | {'int': 2027} |
| `chromeGpuPssKb` | {'int': 2027} |
| `chromeOtherPssKb` | {'int': 2027} |
| `chromeProcesses` | {'int': 2027} |
| `chromeProfiles` | {'int': 2027} |
| `chromeRendererMaxPssKb` | {'int': 2027} |
| `chromeRendererPssKb` | {'int': 2027} |
| `chromeRenderers` | {'int': 2027} |
| `chromeTabs` | {'int': 2027} |
| `chromeTabsProbedProfiles` | {'int': 2027} |
| `chromeUtilityPssKb` | {'int': 2027} |
| `desktopPssKb` | {'int': 2027} |
| `hostPssKb` | {'int': 2027} |
| `kind` | {'str': 2027} |
| `memAvailableKb` | {'int': 2027} |
| `memTotalKb` | {'int': 2027} |
| `otherPssKb` | {'int': 2027} |
| `processes` | {'int': 2027} |
| `pssFallbackProcesses` | {'int': 2027} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
