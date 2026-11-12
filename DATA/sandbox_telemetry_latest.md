# sandbox_telemetry_parse — 2026-11-12 05:53:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1995624 lines=4418
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4409 |
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
| `chromeBrowserPssKb` | {'int': 4409} |
| `chromeGpuPssKb` | {'int': 4409} |
| `chromeOtherPssKb` | {'int': 4409} |
| `chromeProcesses` | {'int': 4409} |
| `chromeProfiles` | {'int': 4409} |
| `chromeRendererMaxPssKb` | {'int': 4409} |
| `chromeRendererPssKb` | {'int': 4409} |
| `chromeRenderers` | {'int': 4409} |
| `chromeTabs` | {'int': 4409} |
| `chromeTabsProbedProfiles` | {'int': 4409} |
| `chromeUtilityPssKb` | {'int': 4409} |
| `desktopPssKb` | {'int': 4409} |
| `hostPssKb` | {'int': 4409} |
| `kind` | {'str': 4409} |
| `memAvailableKb` | {'int': 4409} |
| `memTotalKb` | {'int': 4409} |
| `otherPssKb` | {'int': 4409} |
| `processes` | {'int': 4409} |
| `pssFallbackProcesses` | {'int': 4409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
