# sandbox_telemetry_parse — 2026-11-12 19:22:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2290342 lines=5069
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5060 |
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
| `chromeBrowserPssKb` | {'int': 5060} |
| `chromeGpuPssKb` | {'int': 5060} |
| `chromeOtherPssKb` | {'int': 5060} |
| `chromeProcesses` | {'int': 5060} |
| `chromeProfiles` | {'int': 5060} |
| `chromeRendererMaxPssKb` | {'int': 5060} |
| `chromeRendererPssKb` | {'int': 5060} |
| `chromeRenderers` | {'int': 5060} |
| `chromeTabs` | {'int': 5060} |
| `chromeTabsProbedProfiles` | {'int': 5060} |
| `chromeUtilityPssKb` | {'int': 5060} |
| `desktopPssKb` | {'int': 5060} |
| `hostPssKb` | {'int': 5060} |
| `kind` | {'str': 5060} |
| `memAvailableKb` | {'int': 5060} |
| `memTotalKb` | {'int': 5060} |
| `otherPssKb` | {'int': 5060} |
| `processes` | {'int': 5060} |
| `pssFallbackProcesses` | {'int': 5060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
