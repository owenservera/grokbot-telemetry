# sandbox_telemetry_parse — 2026-11-12 01:25:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1908283 lines=4225
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4216 |
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
| `chromeBrowserPssKb` | {'int': 4216} |
| `chromeGpuPssKb` | {'int': 4216} |
| `chromeOtherPssKb` | {'int': 4216} |
| `chromeProcesses` | {'int': 4216} |
| `chromeProfiles` | {'int': 4216} |
| `chromeRendererMaxPssKb` | {'int': 4216} |
| `chromeRendererPssKb` | {'int': 4216} |
| `chromeRenderers` | {'int': 4216} |
| `chromeTabs` | {'int': 4216} |
| `chromeTabsProbedProfiles` | {'int': 4216} |
| `chromeUtilityPssKb` | {'int': 4216} |
| `desktopPssKb` | {'int': 4216} |
| `hostPssKb` | {'int': 4216} |
| `kind` | {'str': 4216} |
| `memAvailableKb` | {'int': 4216} |
| `memTotalKb` | {'int': 4216} |
| `otherPssKb` | {'int': 4216} |
| `processes` | {'int': 4216} |
| `pssFallbackProcesses` | {'int': 4216} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
