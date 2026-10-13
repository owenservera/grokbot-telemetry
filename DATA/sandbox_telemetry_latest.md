# sandbox_telemetry_parse — 2026-10-13 17:55:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1181792 lines=3071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2301 |
| `chrome_profile_sample` | 762 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2301} |
| `chromeGpuPssKb` | {'int': 2301} |
| `chromeOtherPssKb` | {'int': 2301} |
| `chromeProcesses` | {'int': 2301} |
| `chromeProfiles` | {'int': 2301} |
| `chromeRendererMaxPssKb` | {'int': 2301} |
| `chromeRendererPssKb` | {'int': 2301} |
| `chromeRenderers` | {'int': 2301} |
| `chromeTabs` | {'int': 2301} |
| `chromeTabsProbedProfiles` | {'int': 2301} |
| `chromeUtilityPssKb` | {'int': 2301} |
| `desktopPssKb` | {'int': 2301} |
| `hostPssKb` | {'int': 2301} |
| `kind` | {'str': 2301} |
| `memAvailableKb` | {'int': 2301} |
| `memTotalKb` | {'int': 2301} |
| `otherPssKb` | {'int': 2301} |
| `processes` | {'int': 2301} |
| `pssFallbackProcesses` | {'int': 2301} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 761} |
| `display` | {'int': 762} |
| `kind` | {'str': 762} |
| `processes` | {'int': 762} |
| `pssKb` | {'int': 762} |
| `rendererMaxPssKb` | {'int': 762} |
| `renderers` | {'int': 762} |
| `tabs` | {'int': 762} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
