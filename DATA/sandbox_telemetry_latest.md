# sandbox_telemetry_parse — 2026-10-06 01:11:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=63122 lines=143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 138 |
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
| `chromeBrowserPssKb` | {'int': 138} |
| `chromeGpuPssKb` | {'int': 138} |
| `chromeOtherPssKb` | {'int': 138} |
| `chromeProcesses` | {'int': 138} |
| `chromeProfiles` | {'int': 138} |
| `chromeRendererMaxPssKb` | {'int': 138} |
| `chromeRendererPssKb` | {'int': 138} |
| `chromeRenderers` | {'int': 138} |
| `chromeTabs` | {'int': 138} |
| `chromeTabsProbedProfiles` | {'int': 138} |
| `chromeUtilityPssKb` | {'int': 138} |
| `desktopPssKb` | {'int': 138} |
| `hostPssKb` | {'int': 138} |
| `kind` | {'str': 138} |
| `memAvailableKb` | {'int': 138} |
| `memTotalKb` | {'int': 138} |
| `otherPssKb` | {'int': 138} |
| `processes` | {'int': 138} |
| `pssFallbackProcesses` | {'int': 138} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
