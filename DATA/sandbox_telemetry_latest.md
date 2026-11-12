# sandbox_telemetry_parse — 2026-11-12 16:18:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2217409 lines=4908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4899 |
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
| `chromeBrowserPssKb` | {'int': 4899} |
| `chromeGpuPssKb` | {'int': 4899} |
| `chromeOtherPssKb` | {'int': 4899} |
| `chromeProcesses` | {'int': 4899} |
| `chromeProfiles` | {'int': 4899} |
| `chromeRendererMaxPssKb` | {'int': 4899} |
| `chromeRendererPssKb` | {'int': 4899} |
| `chromeRenderers` | {'int': 4899} |
| `chromeTabs` | {'int': 4899} |
| `chromeTabsProbedProfiles` | {'int': 4899} |
| `chromeUtilityPssKb` | {'int': 4899} |
| `desktopPssKb` | {'int': 4899} |
| `hostPssKb` | {'int': 4899} |
| `kind` | {'str': 4899} |
| `memAvailableKb` | {'int': 4899} |
| `memTotalKb` | {'int': 4899} |
| `otherPssKb` | {'int': 4899} |
| `processes` | {'int': 4899} |
| `pssFallbackProcesses` | {'int': 4899} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
