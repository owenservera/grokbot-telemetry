# sandbox_telemetry_parse — 2026-11-24 22:09:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2471185 lines=5476
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5461 |
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
| `chromeBrowserPssKb` | {'int': 5461} |
| `chromeGpuPssKb` | {'int': 5461} |
| `chromeOtherPssKb` | {'int': 5461} |
| `chromeProcesses` | {'int': 5461} |
| `chromeProfiles` | {'int': 5461} |
| `chromeRendererMaxPssKb` | {'int': 5461} |
| `chromeRendererPssKb` | {'int': 5461} |
| `chromeRenderers` | {'int': 5461} |
| `chromeTabs` | {'int': 5461} |
| `chromeTabsProbedProfiles` | {'int': 5461} |
| `chromeUtilityPssKb` | {'int': 5461} |
| `desktopPssKb` | {'int': 5461} |
| `hostPssKb` | {'int': 5461} |
| `kind` | {'str': 5461} |
| `memAvailableKb` | {'int': 5461} |
| `memTotalKb` | {'int': 5461} |
| `otherPssKb` | {'int': 5461} |
| `processes` | {'int': 5461} |
| `pssFallbackProcesses` | {'int': 5461} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
