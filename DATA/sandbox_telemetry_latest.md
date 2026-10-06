# sandbox_telemetry_parse — 2026-10-06 12:15:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=363626 lines=802
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 797 |
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
| `chromeBrowserPssKb` | {'int': 797} |
| `chromeGpuPssKb` | {'int': 797} |
| `chromeOtherPssKb` | {'int': 797} |
| `chromeProcesses` | {'int': 797} |
| `chromeProfiles` | {'int': 797} |
| `chromeRendererMaxPssKb` | {'int': 797} |
| `chromeRendererPssKb` | {'int': 797} |
| `chromeRenderers` | {'int': 797} |
| `chromeTabs` | {'int': 797} |
| `chromeTabsProbedProfiles` | {'int': 797} |
| `chromeUtilityPssKb` | {'int': 797} |
| `desktopPssKb` | {'int': 797} |
| `hostPssKb` | {'int': 797} |
| `kind` | {'str': 797} |
| `memAvailableKb` | {'int': 797} |
| `memTotalKb` | {'int': 797} |
| `otherPssKb` | {'int': 797} |
| `processes` | {'int': 797} |
| `pssFallbackProcesses` | {'int': 797} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
