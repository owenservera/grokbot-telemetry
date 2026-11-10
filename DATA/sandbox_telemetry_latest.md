# sandbox_telemetry_parse — 2026-11-10 02:35:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=954386 lines=2117
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2108 |
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
| `chromeBrowserPssKb` | {'int': 2108} |
| `chromeGpuPssKb` | {'int': 2108} |
| `chromeOtherPssKb` | {'int': 2108} |
| `chromeProcesses` | {'int': 2108} |
| `chromeProfiles` | {'int': 2108} |
| `chromeRendererMaxPssKb` | {'int': 2108} |
| `chromeRendererPssKb` | {'int': 2108} |
| `chromeRenderers` | {'int': 2108} |
| `chromeTabs` | {'int': 2108} |
| `chromeTabsProbedProfiles` | {'int': 2108} |
| `chromeUtilityPssKb` | {'int': 2108} |
| `desktopPssKb` | {'int': 2108} |
| `hostPssKb` | {'int': 2108} |
| `kind` | {'str': 2108} |
| `memAvailableKb` | {'int': 2108} |
| `memTotalKb` | {'int': 2108} |
| `otherPssKb` | {'int': 2108} |
| `processes` | {'int': 2108} |
| `pssFallbackProcesses` | {'int': 2108} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
