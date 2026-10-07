# sandbox_telemetry_parse — 2026-10-07 08:12:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=901885 lines=1982
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1977 |
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
| `chromeBrowserPssKb` | {'int': 1977} |
| `chromeGpuPssKb` | {'int': 1977} |
| `chromeOtherPssKb` | {'int': 1977} |
| `chromeProcesses` | {'int': 1977} |
| `chromeProfiles` | {'int': 1977} |
| `chromeRendererMaxPssKb` | {'int': 1977} |
| `chromeRendererPssKb` | {'int': 1977} |
| `chromeRenderers` | {'int': 1977} |
| `chromeTabs` | {'int': 1977} |
| `chromeTabsProbedProfiles` | {'int': 1977} |
| `chromeUtilityPssKb` | {'int': 1977} |
| `desktopPssKb` | {'int': 1977} |
| `hostPssKb` | {'int': 1977} |
| `kind` | {'str': 1977} |
| `memAvailableKb` | {'int': 1977} |
| `memTotalKb` | {'int': 1977} |
| `otherPssKb` | {'int': 1977} |
| `processes` | {'int': 1977} |
| `pssFallbackProcesses` | {'int': 1977} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
