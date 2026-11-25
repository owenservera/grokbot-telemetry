# sandbox_telemetry_parse — 2026-11-25 21:21:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2928367 lines=6487
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6472 |
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
| `chromeBrowserPssKb` | {'int': 6472} |
| `chromeGpuPssKb` | {'int': 6472} |
| `chromeOtherPssKb` | {'int': 6472} |
| `chromeProcesses` | {'int': 6472} |
| `chromeProfiles` | {'int': 6472} |
| `chromeRendererMaxPssKb` | {'int': 6472} |
| `chromeRendererPssKb` | {'int': 6472} |
| `chromeRenderers` | {'int': 6472} |
| `chromeTabs` | {'int': 6472} |
| `chromeTabsProbedProfiles` | {'int': 6472} |
| `chromeUtilityPssKb` | {'int': 6472} |
| `desktopPssKb` | {'int': 6472} |
| `hostPssKb` | {'int': 6472} |
| `kind` | {'str': 6472} |
| `memAvailableKb` | {'int': 6472} |
| `memTotalKb` | {'int': 6472} |
| `otherPssKb` | {'int': 6472} |
| `processes` | {'int': 6472} |
| `pssFallbackProcesses` | {'int': 6472} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
