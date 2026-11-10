# sandbox_telemetry_parse — 2026-11-10 14:06:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1172933 lines=2600
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2591 |
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
| `chromeBrowserPssKb` | {'int': 2591} |
| `chromeGpuPssKb` | {'int': 2591} |
| `chromeOtherPssKb` | {'int': 2591} |
| `chromeProcesses` | {'int': 2591} |
| `chromeProfiles` | {'int': 2591} |
| `chromeRendererMaxPssKb` | {'int': 2591} |
| `chromeRendererPssKb` | {'int': 2591} |
| `chromeRenderers` | {'int': 2591} |
| `chromeTabs` | {'int': 2591} |
| `chromeTabsProbedProfiles` | {'int': 2591} |
| `chromeUtilityPssKb` | {'int': 2591} |
| `desktopPssKb` | {'int': 2591} |
| `hostPssKb` | {'int': 2591} |
| `kind` | {'str': 2591} |
| `memAvailableKb` | {'int': 2591} |
| `memTotalKb` | {'int': 2591} |
| `otherPssKb` | {'int': 2591} |
| `processes` | {'int': 2591} |
| `pssFallbackProcesses` | {'int': 2591} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
