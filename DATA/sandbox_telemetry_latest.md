# sandbox_telemetry_parse — 2026-11-10 23:05:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1367132 lines=3029
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3020 |
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
| `chromeBrowserPssKb` | {'int': 3020} |
| `chromeGpuPssKb` | {'int': 3020} |
| `chromeOtherPssKb` | {'int': 3020} |
| `chromeProcesses` | {'int': 3020} |
| `chromeProfiles` | {'int': 3020} |
| `chromeRendererMaxPssKb` | {'int': 3020} |
| `chromeRendererPssKb` | {'int': 3020} |
| `chromeRenderers` | {'int': 3020} |
| `chromeTabs` | {'int': 3020} |
| `chromeTabsProbedProfiles` | {'int': 3020} |
| `chromeUtilityPssKb` | {'int': 3020} |
| `desktopPssKb` | {'int': 3020} |
| `hostPssKb` | {'int': 3020} |
| `kind` | {'str': 3020} |
| `memAvailableKb` | {'int': 3020} |
| `memTotalKb` | {'int': 3020} |
| `otherPssKb` | {'int': 3020} |
| `processes` | {'int': 3020} |
| `pssFallbackProcesses` | {'int': 3020} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
