# sandbox_telemetry_parse — 2026-11-07 09:48:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=407337 lines=908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 899 |
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
| `chromeBrowserPssKb` | {'int': 899} |
| `chromeGpuPssKb` | {'int': 899} |
| `chromeOtherPssKb` | {'int': 899} |
| `chromeProcesses` | {'int': 899} |
| `chromeProfiles` | {'int': 899} |
| `chromeRendererMaxPssKb` | {'int': 899} |
| `chromeRendererPssKb` | {'int': 899} |
| `chromeRenderers` | {'int': 899} |
| `chromeTabs` | {'int': 899} |
| `chromeTabsProbedProfiles` | {'int': 899} |
| `chromeUtilityPssKb` | {'int': 899} |
| `desktopPssKb` | {'int': 899} |
| `hostPssKb` | {'int': 899} |
| `kind` | {'str': 899} |
| `memAvailableKb` | {'int': 899} |
| `memTotalKb` | {'int': 899} |
| `otherPssKb` | {'int': 899} |
| `processes` | {'int': 899} |
| `pssFallbackProcesses` | {'int': 899} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
