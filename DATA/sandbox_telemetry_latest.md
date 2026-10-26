# sandbox_telemetry_parse — 2026-10-26 19:23:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=95964 lines=216
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 211 |
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
| `chromeBrowserPssKb` | {'int': 211} |
| `chromeGpuPssKb` | {'int': 211} |
| `chromeOtherPssKb` | {'int': 211} |
| `chromeProcesses` | {'int': 211} |
| `chromeProfiles` | {'int': 211} |
| `chromeRendererMaxPssKb` | {'int': 211} |
| `chromeRendererPssKb` | {'int': 211} |
| `chromeRenderers` | {'int': 211} |
| `chromeTabs` | {'int': 211} |
| `chromeTabsProbedProfiles` | {'int': 211} |
| `chromeUtilityPssKb` | {'int': 211} |
| `desktopPssKb` | {'int': 211} |
| `hostPssKb` | {'int': 211} |
| `kind` | {'str': 211} |
| `memAvailableKb` | {'int': 211} |
| `memTotalKb` | {'int': 211} |
| `otherPssKb` | {'int': 211} |
| `processes` | {'int': 211} |
| `pssFallbackProcesses` | {'int': 211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
