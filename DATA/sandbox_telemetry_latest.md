# sandbox_telemetry_parse — 2026-10-27 00:16:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=220539 lines=491
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 486 |
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
| `chromeBrowserPssKb` | {'int': 486} |
| `chromeGpuPssKb` | {'int': 486} |
| `chromeOtherPssKb` | {'int': 486} |
| `chromeProcesses` | {'int': 486} |
| `chromeProfiles` | {'int': 486} |
| `chromeRendererMaxPssKb` | {'int': 486} |
| `chromeRendererPssKb` | {'int': 486} |
| `chromeRenderers` | {'int': 486} |
| `chromeTabs` | {'int': 486} |
| `chromeTabsProbedProfiles` | {'int': 486} |
| `chromeUtilityPssKb` | {'int': 486} |
| `desktopPssKb` | {'int': 486} |
| `hostPssKb` | {'int': 486} |
| `kind` | {'str': 486} |
| `memAvailableKb` | {'int': 486} |
| `memTotalKb` | {'int': 486} |
| `otherPssKb` | {'int': 486} |
| `processes` | {'int': 486} |
| `pssFallbackProcesses` | {'int': 486} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
