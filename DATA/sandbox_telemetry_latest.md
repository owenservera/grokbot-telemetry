# sandbox_telemetry_parse — 2026-11-12 08:00:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2035419 lines=4506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4497 |
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
| `chromeBrowserPssKb` | {'int': 4497} |
| `chromeGpuPssKb` | {'int': 4497} |
| `chromeOtherPssKb` | {'int': 4497} |
| `chromeProcesses` | {'int': 4497} |
| `chromeProfiles` | {'int': 4497} |
| `chromeRendererMaxPssKb` | {'int': 4497} |
| `chromeRendererPssKb` | {'int': 4497} |
| `chromeRenderers` | {'int': 4497} |
| `chromeTabs` | {'int': 4497} |
| `chromeTabsProbedProfiles` | {'int': 4497} |
| `chromeUtilityPssKb` | {'int': 4497} |
| `desktopPssKb` | {'int': 4497} |
| `hostPssKb` | {'int': 4497} |
| `kind` | {'str': 4497} |
| `memAvailableKb` | {'int': 4497} |
| `memTotalKb` | {'int': 4497} |
| `otherPssKb` | {'int': 4497} |
| `processes` | {'int': 4497} |
| `pssFallbackProcesses` | {'int': 4497} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
