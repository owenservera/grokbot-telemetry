# sandbox_telemetry_parse — 2026-11-12 11:53:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2115961 lines=4684
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4675 |
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
| `chromeBrowserPssKb` | {'int': 4675} |
| `chromeGpuPssKb` | {'int': 4675} |
| `chromeOtherPssKb` | {'int': 4675} |
| `chromeProcesses` | {'int': 4675} |
| `chromeProfiles` | {'int': 4675} |
| `chromeRendererMaxPssKb` | {'int': 4675} |
| `chromeRendererPssKb` | {'int': 4675} |
| `chromeRenderers` | {'int': 4675} |
| `chromeTabs` | {'int': 4675} |
| `chromeTabsProbedProfiles` | {'int': 4675} |
| `chromeUtilityPssKb` | {'int': 4675} |
| `desktopPssKb` | {'int': 4675} |
| `hostPssKb` | {'int': 4675} |
| `kind` | {'str': 4675} |
| `memAvailableKb` | {'int': 4675} |
| `memTotalKb` | {'int': 4675} |
| `otherPssKb` | {'int': 4675} |
| `processes` | {'int': 4675} |
| `pssFallbackProcesses` | {'int': 4675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
