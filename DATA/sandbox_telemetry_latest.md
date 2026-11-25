# sandbox_telemetry_parse — 2026-11-25 14:05:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2786829 lines=6174
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6159 |
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
| `chromeBrowserPssKb` | {'int': 6159} |
| `chromeGpuPssKb` | {'int': 6159} |
| `chromeOtherPssKb` | {'int': 6159} |
| `chromeProcesses` | {'int': 6159} |
| `chromeProfiles` | {'int': 6159} |
| `chromeRendererMaxPssKb` | {'int': 6159} |
| `chromeRendererPssKb` | {'int': 6159} |
| `chromeRenderers` | {'int': 6159} |
| `chromeTabs` | {'int': 6159} |
| `chromeTabsProbedProfiles` | {'int': 6159} |
| `chromeUtilityPssKb` | {'int': 6159} |
| `desktopPssKb` | {'int': 6159} |
| `hostPssKb` | {'int': 6159} |
| `kind` | {'str': 6159} |
| `memAvailableKb` | {'int': 6159} |
| `memTotalKb` | {'int': 6159} |
| `otherPssKb` | {'int': 6159} |
| `processes` | {'int': 6159} |
| `pssFallbackProcesses` | {'int': 6159} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
