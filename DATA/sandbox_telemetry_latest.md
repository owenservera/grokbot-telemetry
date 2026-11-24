# sandbox_telemetry_parse — 2026-11-24 11:43:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2271585 lines=5035
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5020 |
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
| `chromeBrowserPssKb` | {'int': 5020} |
| `chromeGpuPssKb` | {'int': 5020} |
| `chromeOtherPssKb` | {'int': 5020} |
| `chromeProcesses` | {'int': 5020} |
| `chromeProfiles` | {'int': 5020} |
| `chromeRendererMaxPssKb` | {'int': 5020} |
| `chromeRendererPssKb` | {'int': 5020} |
| `chromeRenderers` | {'int': 5020} |
| `chromeTabs` | {'int': 5020} |
| `chromeTabsProbedProfiles` | {'int': 5020} |
| `chromeUtilityPssKb` | {'int': 5020} |
| `desktopPssKb` | {'int': 5020} |
| `hostPssKb` | {'int': 5020} |
| `kind` | {'str': 5020} |
| `memAvailableKb` | {'int': 5020} |
| `memTotalKb` | {'int': 5020} |
| `otherPssKb` | {'int': 5020} |
| `processes` | {'int': 5020} |
| `pssFallbackProcesses` | {'int': 5020} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
