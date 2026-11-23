# sandbox_telemetry_parse — 2026-11-23 20:57:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1984400 lines=4400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4385 |
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
| `chromeBrowserPssKb` | {'int': 4385} |
| `chromeGpuPssKb` | {'int': 4385} |
| `chromeOtherPssKb` | {'int': 4385} |
| `chromeProcesses` | {'int': 4385} |
| `chromeProfiles` | {'int': 4385} |
| `chromeRendererMaxPssKb` | {'int': 4385} |
| `chromeRendererPssKb` | {'int': 4385} |
| `chromeRenderers` | {'int': 4385} |
| `chromeTabs` | {'int': 4385} |
| `chromeTabsProbedProfiles` | {'int': 4385} |
| `chromeUtilityPssKb` | {'int': 4385} |
| `desktopPssKb` | {'int': 4385} |
| `hostPssKb` | {'int': 4385} |
| `kind` | {'str': 4385} |
| `memAvailableKb` | {'int': 4385} |
| `memTotalKb` | {'int': 4385} |
| `otherPssKb` | {'int': 4385} |
| `processes` | {'int': 4385} |
| `pssFallbackProcesses` | {'int': 4385} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
