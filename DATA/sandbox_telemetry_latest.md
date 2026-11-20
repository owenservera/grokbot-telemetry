# sandbox_telemetry_parse — 2026-11-20 09:03:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1648812 lines=3655
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3644 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3644} |
| `chromeGpuPssKb` | {'int': 3644} |
| `chromeOtherPssKb` | {'int': 3644} |
| `chromeProcesses` | {'int': 3644} |
| `chromeProfiles` | {'int': 3644} |
| `chromeRendererMaxPssKb` | {'int': 3644} |
| `chromeRendererPssKb` | {'int': 3644} |
| `chromeRenderers` | {'int': 3644} |
| `chromeTabs` | {'int': 3644} |
| `chromeTabsProbedProfiles` | {'int': 3644} |
| `chromeUtilityPssKb` | {'int': 3644} |
| `desktopPssKb` | {'int': 3644} |
| `hostPssKb` | {'int': 3644} |
| `kind` | {'str': 3644} |
| `memAvailableKb` | {'int': 3644} |
| `memTotalKb` | {'int': 3644} |
| `otherPssKb` | {'int': 3644} |
| `processes` | {'int': 3644} |
| `pssFallbackProcesses` | {'int': 3644} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
