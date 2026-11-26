# sandbox_telemetry_parse — 2026-11-26 01:35:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3013385 lines=6675
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6660 |
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
| `chromeBrowserPssKb` | {'int': 6660} |
| `chromeGpuPssKb` | {'int': 6660} |
| `chromeOtherPssKb` | {'int': 6660} |
| `chromeProcesses` | {'int': 6660} |
| `chromeProfiles` | {'int': 6660} |
| `chromeRendererMaxPssKb` | {'int': 6660} |
| `chromeRendererPssKb` | {'int': 6660} |
| `chromeRenderers` | {'int': 6660} |
| `chromeTabs` | {'int': 6660} |
| `chromeTabsProbedProfiles` | {'int': 6660} |
| `chromeUtilityPssKb` | {'int': 6660} |
| `desktopPssKb` | {'int': 6660} |
| `hostPssKb` | {'int': 6660} |
| `kind` | {'str': 6660} |
| `memAvailableKb` | {'int': 6660} |
| `memTotalKb` | {'int': 6660} |
| `otherPssKb` | {'int': 6660} |
| `processes` | {'int': 6660} |
| `pssFallbackProcesses` | {'int': 6660} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
