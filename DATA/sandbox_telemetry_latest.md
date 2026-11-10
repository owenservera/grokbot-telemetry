# sandbox_telemetry_parse — 2026-11-10 09:29:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1078302 lines=2391
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2382 |
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
| `chromeBrowserPssKb` | {'int': 2382} |
| `chromeGpuPssKb` | {'int': 2382} |
| `chromeOtherPssKb` | {'int': 2382} |
| `chromeProcesses` | {'int': 2382} |
| `chromeProfiles` | {'int': 2382} |
| `chromeRendererMaxPssKb` | {'int': 2382} |
| `chromeRendererPssKb` | {'int': 2382} |
| `chromeRenderers` | {'int': 2382} |
| `chromeTabs` | {'int': 2382} |
| `chromeTabsProbedProfiles` | {'int': 2382} |
| `chromeUtilityPssKb` | {'int': 2382} |
| `desktopPssKb` | {'int': 2382} |
| `hostPssKb` | {'int': 2382} |
| `kind` | {'str': 2382} |
| `memAvailableKb` | {'int': 2382} |
| `memTotalKb` | {'int': 2382} |
| `otherPssKb` | {'int': 2382} |
| `processes` | {'int': 2382} |
| `pssFallbackProcesses` | {'int': 2382} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
