# sandbox_telemetry_parse — 2026-11-18 08:22:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=743922 lines=1651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1644 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1644} |
| `chromeGpuPssKb` | {'int': 1644} |
| `chromeOtherPssKb` | {'int': 1644} |
| `chromeProcesses` | {'int': 1644} |
| `chromeProfiles` | {'int': 1644} |
| `chromeRendererMaxPssKb` | {'int': 1644} |
| `chromeRendererPssKb` | {'int': 1644} |
| `chromeRenderers` | {'int': 1644} |
| `chromeTabs` | {'int': 1644} |
| `chromeTabsProbedProfiles` | {'int': 1644} |
| `chromeUtilityPssKb` | {'int': 1644} |
| `desktopPssKb` | {'int': 1644} |
| `hostPssKb` | {'int': 1644} |
| `kind` | {'str': 1644} |
| `memAvailableKb` | {'int': 1644} |
| `memTotalKb` | {'int': 1644} |
| `otherPssKb` | {'int': 1644} |
| `processes` | {'int': 1644} |
| `pssFallbackProcesses` | {'int': 1644} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
