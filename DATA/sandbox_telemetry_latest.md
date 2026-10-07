# sandbox_telemetry_parse — 2026-10-07 10:26:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=962989 lines=2116
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2111 |
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
| `chromeBrowserPssKb` | {'int': 2111} |
| `chromeGpuPssKb` | {'int': 2111} |
| `chromeOtherPssKb` | {'int': 2111} |
| `chromeProcesses` | {'int': 2111} |
| `chromeProfiles` | {'int': 2111} |
| `chromeRendererMaxPssKb` | {'int': 2111} |
| `chromeRendererPssKb` | {'int': 2111} |
| `chromeRenderers` | {'int': 2111} |
| `chromeTabs` | {'int': 2111} |
| `chromeTabsProbedProfiles` | {'int': 2111} |
| `chromeUtilityPssKb` | {'int': 2111} |
| `desktopPssKb` | {'int': 2111} |
| `hostPssKb` | {'int': 2111} |
| `kind` | {'str': 2111} |
| `memAvailableKb` | {'int': 2111} |
| `memTotalKb` | {'int': 2111} |
| `otherPssKb` | {'int': 2111} |
| `processes` | {'int': 2111} |
| `pssFallbackProcesses` | {'int': 2111} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
