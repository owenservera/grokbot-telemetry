# sandbox_telemetry_parse — 2026-11-12 16:07:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2213332 lines=4899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4890 |
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
| `chromeBrowserPssKb` | {'int': 4890} |
| `chromeGpuPssKb` | {'int': 4890} |
| `chromeOtherPssKb` | {'int': 4890} |
| `chromeProcesses` | {'int': 4890} |
| `chromeProfiles` | {'int': 4890} |
| `chromeRendererMaxPssKb` | {'int': 4890} |
| `chromeRendererPssKb` | {'int': 4890} |
| `chromeRenderers` | {'int': 4890} |
| `chromeTabs` | {'int': 4890} |
| `chromeTabsProbedProfiles` | {'int': 4890} |
| `chromeUtilityPssKb` | {'int': 4890} |
| `desktopPssKb` | {'int': 4890} |
| `hostPssKb` | {'int': 4890} |
| `kind` | {'str': 4890} |
| `memAvailableKb` | {'int': 4890} |
| `memTotalKb` | {'int': 4890} |
| `otherPssKb` | {'int': 4890} |
| `processes` | {'int': 4890} |
| `pssFallbackProcesses` | {'int': 4890} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
