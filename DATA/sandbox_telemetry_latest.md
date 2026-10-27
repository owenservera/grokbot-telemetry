# sandbox_telemetry_parse — 2026-10-27 08:41:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=420864 lines=934
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 929 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 929} |
| `chromeGpuPssKb` | {'int': 929} |
| `chromeOtherPssKb` | {'int': 929} |
| `chromeProcesses` | {'int': 929} |
| `chromeProfiles` | {'int': 929} |
| `chromeRendererMaxPssKb` | {'int': 929} |
| `chromeRendererPssKb` | {'int': 929} |
| `chromeRenderers` | {'int': 929} |
| `chromeTabs` | {'int': 929} |
| `chromeTabsProbedProfiles` | {'int': 929} |
| `chromeUtilityPssKb` | {'int': 929} |
| `desktopPssKb` | {'int': 929} |
| `hostPssKb` | {'int': 929} |
| `kind` | {'str': 929} |
| `memAvailableKb` | {'int': 929} |
| `memTotalKb` | {'int': 929} |
| `otherPssKb` | {'int': 929} |
| `processes` | {'int': 929} |
| `pssFallbackProcesses` | {'int': 929} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
