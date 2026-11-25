# sandbox_telemetry_parse — 2026-11-25 02:47:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2558902 lines=5670
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5655 |
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
| `chromeBrowserPssKb` | {'int': 5655} |
| `chromeGpuPssKb` | {'int': 5655} |
| `chromeOtherPssKb` | {'int': 5655} |
| `chromeProcesses` | {'int': 5655} |
| `chromeProfiles` | {'int': 5655} |
| `chromeRendererMaxPssKb` | {'int': 5655} |
| `chromeRendererPssKb` | {'int': 5655} |
| `chromeRenderers` | {'int': 5655} |
| `chromeTabs` | {'int': 5655} |
| `chromeTabsProbedProfiles` | {'int': 5655} |
| `chromeUtilityPssKb` | {'int': 5655} |
| `desktopPssKb` | {'int': 5655} |
| `hostPssKb` | {'int': 5655} |
| `kind` | {'str': 5655} |
| `memAvailableKb` | {'int': 5655} |
| `memTotalKb` | {'int': 5655} |
| `otherPssKb` | {'int': 5655} |
| `processes` | {'int': 5655} |
| `pssFallbackProcesses` | {'int': 5655} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
