# sandbox_telemetry_parse — 2026-10-15 07:02:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=724926 lines=1608
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1603 |
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
| `chromeBrowserPssKb` | {'int': 1603} |
| `chromeGpuPssKb` | {'int': 1603} |
| `chromeOtherPssKb` | {'int': 1603} |
| `chromeProcesses` | {'int': 1603} |
| `chromeProfiles` | {'int': 1603} |
| `chromeRendererMaxPssKb` | {'int': 1603} |
| `chromeRendererPssKb` | {'int': 1603} |
| `chromeRenderers` | {'int': 1603} |
| `chromeTabs` | {'int': 1603} |
| `chromeTabsProbedProfiles` | {'int': 1603} |
| `chromeUtilityPssKb` | {'int': 1603} |
| `desktopPssKb` | {'int': 1603} |
| `hostPssKb` | {'int': 1603} |
| `kind` | {'str': 1603} |
| `memAvailableKb` | {'int': 1603} |
| `memTotalKb` | {'int': 1603} |
| `otherPssKb` | {'int': 1603} |
| `processes` | {'int': 1603} |
| `pssFallbackProcesses` | {'int': 1603} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
