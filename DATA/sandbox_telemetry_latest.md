# sandbox_telemetry_parse — 2026-10-14 10:26:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=234506 lines=523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 518 |
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
| `chromeBrowserPssKb` | {'int': 518} |
| `chromeGpuPssKb` | {'int': 518} |
| `chromeOtherPssKb` | {'int': 518} |
| `chromeProcesses` | {'int': 518} |
| `chromeProfiles` | {'int': 518} |
| `chromeRendererMaxPssKb` | {'int': 518} |
| `chromeRendererPssKb` | {'int': 518} |
| `chromeRenderers` | {'int': 518} |
| `chromeTabs` | {'int': 518} |
| `chromeTabsProbedProfiles` | {'int': 518} |
| `chromeUtilityPssKb` | {'int': 518} |
| `desktopPssKb` | {'int': 518} |
| `hostPssKb` | {'int': 518} |
| `kind` | {'str': 518} |
| `memAvailableKb` | {'int': 518} |
| `memTotalKb` | {'int': 518} |
| `otherPssKb` | {'int': 518} |
| `processes` | {'int': 518} |
| `pssFallbackProcesses` | {'int': 518} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
