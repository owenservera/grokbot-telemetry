# sandbox_telemetry_parse — 2026-10-06 14:23:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=420170 lines=926
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 921 |
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
| `chromeBrowserPssKb` | {'int': 921} |
| `chromeGpuPssKb` | {'int': 921} |
| `chromeOtherPssKb` | {'int': 921} |
| `chromeProcesses` | {'int': 921} |
| `chromeProfiles` | {'int': 921} |
| `chromeRendererMaxPssKb` | {'int': 921} |
| `chromeRendererPssKb` | {'int': 921} |
| `chromeRenderers` | {'int': 921} |
| `chromeTabs` | {'int': 921} |
| `chromeTabsProbedProfiles` | {'int': 921} |
| `chromeUtilityPssKb` | {'int': 921} |
| `desktopPssKb` | {'int': 921} |
| `hostPssKb` | {'int': 921} |
| `kind` | {'str': 921} |
| `memAvailableKb` | {'int': 921} |
| `memTotalKb` | {'int': 921} |
| `otherPssKb` | {'int': 921} |
| `processes` | {'int': 921} |
| `pssFallbackProcesses` | {'int': 921} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
