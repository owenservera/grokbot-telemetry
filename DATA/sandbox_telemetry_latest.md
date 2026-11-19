# sandbox_telemetry_parse — 2026-11-19 01:10:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1059790 lines=2351
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2342 |
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
| `chromeBrowserPssKb` | {'int': 2342} |
| `chromeGpuPssKb` | {'int': 2342} |
| `chromeOtherPssKb` | {'int': 2342} |
| `chromeProcesses` | {'int': 2342} |
| `chromeProfiles` | {'int': 2342} |
| `chromeRendererMaxPssKb` | {'int': 2342} |
| `chromeRendererPssKb` | {'int': 2342} |
| `chromeRenderers` | {'int': 2342} |
| `chromeTabs` | {'int': 2342} |
| `chromeTabsProbedProfiles` | {'int': 2342} |
| `chromeUtilityPssKb` | {'int': 2342} |
| `desktopPssKb` | {'int': 2342} |
| `hostPssKb` | {'int': 2342} |
| `kind` | {'str': 2342} |
| `memAvailableKb` | {'int': 2342} |
| `memTotalKb` | {'int': 2342} |
| `otherPssKb` | {'int': 2342} |
| `processes` | {'int': 2342} |
| `pssFallbackProcesses` | {'int': 2342} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
