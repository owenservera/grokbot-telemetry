# sandbox_telemetry_parse — 2026-11-12 10:47:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2091091 lines=4629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4620 |
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
| `chromeBrowserPssKb` | {'int': 4620} |
| `chromeGpuPssKb` | {'int': 4620} |
| `chromeOtherPssKb` | {'int': 4620} |
| `chromeProcesses` | {'int': 4620} |
| `chromeProfiles` | {'int': 4620} |
| `chromeRendererMaxPssKb` | {'int': 4620} |
| `chromeRendererPssKb` | {'int': 4620} |
| `chromeRenderers` | {'int': 4620} |
| `chromeTabs` | {'int': 4620} |
| `chromeTabsProbedProfiles` | {'int': 4620} |
| `chromeUtilityPssKb` | {'int': 4620} |
| `desktopPssKb` | {'int': 4620} |
| `hostPssKb` | {'int': 4620} |
| `kind` | {'str': 4620} |
| `memAvailableKb` | {'int': 4620} |
| `memTotalKb` | {'int': 4620} |
| `otherPssKb` | {'int': 4620} |
| `processes` | {'int': 4620} |
| `pssFallbackProcesses` | {'int': 4620} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
