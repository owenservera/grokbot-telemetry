# sandbox_telemetry_parse — 2026-10-15 09:22:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=784138 lines=1739
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1734 |
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
| `chromeBrowserPssKb` | {'int': 1734} |
| `chromeGpuPssKb` | {'int': 1734} |
| `chromeOtherPssKb` | {'int': 1734} |
| `chromeProcesses` | {'int': 1734} |
| `chromeProfiles` | {'int': 1734} |
| `chromeRendererMaxPssKb` | {'int': 1734} |
| `chromeRendererPssKb` | {'int': 1734} |
| `chromeRenderers` | {'int': 1734} |
| `chromeTabs` | {'int': 1734} |
| `chromeTabsProbedProfiles` | {'int': 1734} |
| `chromeUtilityPssKb` | {'int': 1734} |
| `desktopPssKb` | {'int': 1734} |
| `hostPssKb` | {'int': 1734} |
| `kind` | {'str': 1734} |
| `memAvailableKb` | {'int': 1734} |
| `memTotalKb` | {'int': 1734} |
| `otherPssKb` | {'int': 1734} |
| `processes` | {'int': 1734} |
| `pssFallbackProcesses` | {'int': 1734} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
