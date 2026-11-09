# sandbox_telemetry_parse — 2026-11-09 23:17:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=882903 lines=1959
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1950 |
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
| `chromeBrowserPssKb` | {'int': 1950} |
| `chromeGpuPssKb` | {'int': 1950} |
| `chromeOtherPssKb` | {'int': 1950} |
| `chromeProcesses` | {'int': 1950} |
| `chromeProfiles` | {'int': 1950} |
| `chromeRendererMaxPssKb` | {'int': 1950} |
| `chromeRendererPssKb` | {'int': 1950} |
| `chromeRenderers` | {'int': 1950} |
| `chromeTabs` | {'int': 1950} |
| `chromeTabsProbedProfiles` | {'int': 1950} |
| `chromeUtilityPssKb` | {'int': 1950} |
| `desktopPssKb` | {'int': 1950} |
| `hostPssKb` | {'int': 1950} |
| `kind` | {'str': 1950} |
| `memAvailableKb` | {'int': 1950} |
| `memTotalKb` | {'int': 1950} |
| `otherPssKb` | {'int': 1950} |
| `processes` | {'int': 1950} |
| `pssFallbackProcesses` | {'int': 1950} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
