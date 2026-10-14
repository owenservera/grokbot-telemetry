# sandbox_telemetry_parse — 2026-10-14 17:34:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=400842 lines=891
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 886 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 886} |
| `chromeGpuPssKb` | {'int': 886} |
| `chromeOtherPssKb` | {'int': 886} |
| `chromeProcesses` | {'int': 886} |
| `chromeProfiles` | {'int': 886} |
| `chromeRendererMaxPssKb` | {'int': 886} |
| `chromeRendererPssKb` | {'int': 886} |
| `chromeRenderers` | {'int': 886} |
| `chromeTabs` | {'int': 886} |
| `chromeTabsProbedProfiles` | {'int': 886} |
| `chromeUtilityPssKb` | {'int': 886} |
| `desktopPssKb` | {'int': 886} |
| `hostPssKb` | {'int': 886} |
| `kind` | {'str': 886} |
| `memAvailableKb` | {'int': 886} |
| `memTotalKb` | {'int': 886} |
| `otherPssKb` | {'int': 886} |
| `processes` | {'int': 886} |
| `pssFallbackProcesses` | {'int': 886} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
