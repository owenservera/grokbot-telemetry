# sandbox_telemetry_parse — 2026-10-07 00:51:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=704758 lines=1550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1545 |
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
| `chromeBrowserPssKb` | {'int': 1545} |
| `chromeGpuPssKb` | {'int': 1545} |
| `chromeOtherPssKb` | {'int': 1545} |
| `chromeProcesses` | {'int': 1545} |
| `chromeProfiles` | {'int': 1545} |
| `chromeRendererMaxPssKb` | {'int': 1545} |
| `chromeRendererPssKb` | {'int': 1545} |
| `chromeRenderers` | {'int': 1545} |
| `chromeTabs` | {'int': 1545} |
| `chromeTabsProbedProfiles` | {'int': 1545} |
| `chromeUtilityPssKb` | {'int': 1545} |
| `desktopPssKb` | {'int': 1545} |
| `hostPssKb` | {'int': 1545} |
| `kind` | {'str': 1545} |
| `memAvailableKb` | {'int': 1545} |
| `memTotalKb` | {'int': 1545} |
| `otherPssKb` | {'int': 1545} |
| `processes` | {'int': 1545} |
| `pssFallbackProcesses` | {'int': 1545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
