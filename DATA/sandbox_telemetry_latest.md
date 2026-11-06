# sandbox_telemetry_parse — 2026-11-06 18:24:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=108392 lines=247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 238 |
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
| `chromeBrowserPssKb` | {'int': 238} |
| `chromeGpuPssKb` | {'int': 238} |
| `chromeOtherPssKb` | {'int': 238} |
| `chromeProcesses` | {'int': 238} |
| `chromeProfiles` | {'int': 238} |
| `chromeRendererMaxPssKb` | {'int': 238} |
| `chromeRendererPssKb` | {'int': 238} |
| `chromeRenderers` | {'int': 238} |
| `chromeTabs` | {'int': 238} |
| `chromeTabsProbedProfiles` | {'int': 238} |
| `chromeUtilityPssKb` | {'int': 238} |
| `desktopPssKb` | {'int': 238} |
| `hostPssKb` | {'int': 238} |
| `kind` | {'str': 238} |
| `memAvailableKb` | {'int': 238} |
| `memTotalKb` | {'int': 238} |
| `otherPssKb` | {'int': 238} |
| `processes` | {'int': 238} |
| `pssFallbackProcesses` | {'int': 238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
