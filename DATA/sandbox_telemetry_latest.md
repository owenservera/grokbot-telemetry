# sandbox_telemetry_parse — 2026-10-13 08:14:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=940130 lines=2313
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1922 |
| `chrome_profile_sample` | 383 |
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
| `chromeBrowserPssKb` | {'int': 1922} |
| `chromeGpuPssKb` | {'int': 1922} |
| `chromeOtherPssKb` | {'int': 1922} |
| `chromeProcesses` | {'int': 1922} |
| `chromeProfiles` | {'int': 1922} |
| `chromeRendererMaxPssKb` | {'int': 1922} |
| `chromeRendererPssKb` | {'int': 1922} |
| `chromeRenderers` | {'int': 1922} |
| `chromeTabs` | {'int': 1922} |
| `chromeTabsProbedProfiles` | {'int': 1922} |
| `chromeUtilityPssKb` | {'int': 1922} |
| `desktopPssKb` | {'int': 1922} |
| `hostPssKb` | {'int': 1922} |
| `kind` | {'str': 1922} |
| `memAvailableKb` | {'int': 1922} |
| `memTotalKb` | {'int': 1922} |
| `otherPssKb` | {'int': 1922} |
| `processes` | {'int': 1922} |
| `pssFallbackProcesses` | {'int': 1922} |

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
| `cpuMillicores` | {'int': 382} |
| `display` | {'int': 383} |
| `kind` | {'str': 383} |
| `processes` | {'int': 383} |
| `pssKb` | {'int': 383} |
| `rendererMaxPssKb` | {'int': 383} |
| `renderers` | {'int': 383} |
| `tabs` | {'int': 383} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
