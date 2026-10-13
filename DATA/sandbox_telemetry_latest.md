# sandbox_telemetry_parse — 2026-10-13 08:13:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=939494 lines=2311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1921 |
| `chrome_profile_sample` | 382 |
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
| `chromeBrowserPssKb` | {'int': 1921} |
| `chromeGpuPssKb` | {'int': 1921} |
| `chromeOtherPssKb` | {'int': 1921} |
| `chromeProcesses` | {'int': 1921} |
| `chromeProfiles` | {'int': 1921} |
| `chromeRendererMaxPssKb` | {'int': 1921} |
| `chromeRendererPssKb` | {'int': 1921} |
| `chromeRenderers` | {'int': 1921} |
| `chromeTabs` | {'int': 1921} |
| `chromeTabsProbedProfiles` | {'int': 1921} |
| `chromeUtilityPssKb` | {'int': 1921} |
| `desktopPssKb` | {'int': 1921} |
| `hostPssKb` | {'int': 1921} |
| `kind` | {'str': 1921} |
| `memAvailableKb` | {'int': 1921} |
| `memTotalKb` | {'int': 1921} |
| `otherPssKb` | {'int': 1921} |
| `processes` | {'int': 1921} |
| `pssFallbackProcesses` | {'int': 1921} |

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
| `cpuMillicores` | {'int': 381} |
| `display` | {'int': 382} |
| `kind` | {'str': 382} |
| `processes` | {'int': 382} |
| `pssKb` | {'int': 382} |
| `rendererMaxPssKb` | {'int': 382} |
| `renderers` | {'int': 382} |
| `tabs` | {'int': 382} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
