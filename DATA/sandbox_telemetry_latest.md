# sandbox_telemetry_parse — 2026-10-15 17:36:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=974882 lines=2161
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2156 |
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
| `chromeBrowserPssKb` | {'int': 2156} |
| `chromeGpuPssKb` | {'int': 2156} |
| `chromeOtherPssKb` | {'int': 2156} |
| `chromeProcesses` | {'int': 2156} |
| `chromeProfiles` | {'int': 2156} |
| `chromeRendererMaxPssKb` | {'int': 2156} |
| `chromeRendererPssKb` | {'int': 2156} |
| `chromeRenderers` | {'int': 2156} |
| `chromeTabs` | {'int': 2156} |
| `chromeTabsProbedProfiles` | {'int': 2156} |
| `chromeUtilityPssKb` | {'int': 2156} |
| `desktopPssKb` | {'int': 2156} |
| `hostPssKb` | {'int': 2156} |
| `kind` | {'str': 2156} |
| `memAvailableKb` | {'int': 2156} |
| `memTotalKb` | {'int': 2156} |
| `otherPssKb` | {'int': 2156} |
| `processes` | {'int': 2156} |
| `pssFallbackProcesses` | {'int': 2156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
