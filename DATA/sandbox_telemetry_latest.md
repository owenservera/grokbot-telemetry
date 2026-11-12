# sandbox_telemetry_parse — 2026-11-12 19:28:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2292607 lines=5074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5065 |
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
| `chromeBrowserPssKb` | {'int': 5065} |
| `chromeGpuPssKb` | {'int': 5065} |
| `chromeOtherPssKb` | {'int': 5065} |
| `chromeProcesses` | {'int': 5065} |
| `chromeProfiles` | {'int': 5065} |
| `chromeRendererMaxPssKb` | {'int': 5065} |
| `chromeRendererPssKb` | {'int': 5065} |
| `chromeRenderers` | {'int': 5065} |
| `chromeTabs` | {'int': 5065} |
| `chromeTabsProbedProfiles` | {'int': 5065} |
| `chromeUtilityPssKb` | {'int': 5065} |
| `desktopPssKb` | {'int': 5065} |
| `hostPssKb` | {'int': 5065} |
| `kind` | {'str': 5065} |
| `memAvailableKb` | {'int': 5065} |
| `memTotalKb` | {'int': 5065} |
| `otherPssKb` | {'int': 5065} |
| `processes` | {'int': 5065} |
| `pssFallbackProcesses` | {'int': 5065} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
