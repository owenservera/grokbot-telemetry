# sandbox_telemetry_parse — 2026-11-25 18:52:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2878167 lines=6376
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6361 |
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
| `chromeBrowserPssKb` | {'int': 6361} |
| `chromeGpuPssKb` | {'int': 6361} |
| `chromeOtherPssKb` | {'int': 6361} |
| `chromeProcesses` | {'int': 6361} |
| `chromeProfiles` | {'int': 6361} |
| `chromeRendererMaxPssKb` | {'int': 6361} |
| `chromeRendererPssKb` | {'int': 6361} |
| `chromeRenderers` | {'int': 6361} |
| `chromeTabs` | {'int': 6361} |
| `chromeTabsProbedProfiles` | {'int': 6361} |
| `chromeUtilityPssKb` | {'int': 6361} |
| `desktopPssKb` | {'int': 6361} |
| `hostPssKb` | {'int': 6361} |
| `kind` | {'str': 6361} |
| `memAvailableKb` | {'int': 6361} |
| `memTotalKb` | {'int': 6361} |
| `otherPssKb` | {'int': 6361} |
| `processes` | {'int': 6361} |
| `pssFallbackProcesses` | {'int': 6361} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
