# sandbox_telemetry_parse — 2026-11-26 02:52:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3039168 lines=6732
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6717 |
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
| `chromeBrowserPssKb` | {'int': 6717} |
| `chromeGpuPssKb` | {'int': 6717} |
| `chromeOtherPssKb` | {'int': 6717} |
| `chromeProcesses` | {'int': 6717} |
| `chromeProfiles` | {'int': 6717} |
| `chromeRendererMaxPssKb` | {'int': 6717} |
| `chromeRendererPssKb` | {'int': 6717} |
| `chromeRenderers` | {'int': 6717} |
| `chromeTabs` | {'int': 6717} |
| `chromeTabsProbedProfiles` | {'int': 6717} |
| `chromeUtilityPssKb` | {'int': 6717} |
| `desktopPssKb` | {'int': 6717} |
| `hostPssKb` | {'int': 6717} |
| `kind` | {'str': 6717} |
| `memAvailableKb` | {'int': 6717} |
| `memTotalKb` | {'int': 6717} |
| `otherPssKb` | {'int': 6717} |
| `processes` | {'int': 6717} |
| `pssFallbackProcesses` | {'int': 6717} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
