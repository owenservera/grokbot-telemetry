# sandbox_telemetry_parse — 2026-11-10 10:59:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1106834 lines=2454
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2445 |
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
| `chromeBrowserPssKb` | {'int': 2445} |
| `chromeGpuPssKb` | {'int': 2445} |
| `chromeOtherPssKb` | {'int': 2445} |
| `chromeProcesses` | {'int': 2445} |
| `chromeProfiles` | {'int': 2445} |
| `chromeRendererMaxPssKb` | {'int': 2445} |
| `chromeRendererPssKb` | {'int': 2445} |
| `chromeRenderers` | {'int': 2445} |
| `chromeTabs` | {'int': 2445} |
| `chromeTabsProbedProfiles` | {'int': 2445} |
| `chromeUtilityPssKb` | {'int': 2445} |
| `desktopPssKb` | {'int': 2445} |
| `hostPssKb` | {'int': 2445} |
| `kind` | {'str': 2445} |
| `memAvailableKb` | {'int': 2445} |
| `memTotalKb` | {'int': 2445} |
| `otherPssKb` | {'int': 2445} |
| `processes` | {'int': 2445} |
| `pssFallbackProcesses` | {'int': 2445} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
