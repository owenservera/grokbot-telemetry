# sandbox_telemetry_parse — 2026-11-26 06:31:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3120614 lines=6912
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6897 |
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
| `chromeBrowserPssKb` | {'int': 6897} |
| `chromeGpuPssKb` | {'int': 6897} |
| `chromeOtherPssKb` | {'int': 6897} |
| `chromeProcesses` | {'int': 6897} |
| `chromeProfiles` | {'int': 6897} |
| `chromeRendererMaxPssKb` | {'int': 6897} |
| `chromeRendererPssKb` | {'int': 6897} |
| `chromeRenderers` | {'int': 6897} |
| `chromeTabs` | {'int': 6897} |
| `chromeTabsProbedProfiles` | {'int': 6897} |
| `chromeUtilityPssKb` | {'int': 6897} |
| `desktopPssKb` | {'int': 6897} |
| `hostPssKb` | {'int': 6897} |
| `kind` | {'str': 6897} |
| `memAvailableKb` | {'int': 6897} |
| `memTotalKb` | {'int': 6897} |
| `otherPssKb` | {'int': 6897} |
| `processes` | {'int': 6897} |
| `pssFallbackProcesses` | {'int': 6897} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
