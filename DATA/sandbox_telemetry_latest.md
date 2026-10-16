# sandbox_telemetry_parse — 2026-10-16 09:25:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=317386 lines=1186
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 778 |
| `memory_sample` | 399 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 399} |
| `chromeGpuPssKb` | {'int': 399} |
| `chromeOtherPssKb` | {'int': 399} |
| `chromeProcesses` | {'int': 399} |
| `chromeProfiles` | {'int': 399} |
| `chromeRendererMaxPssKb` | {'int': 399} |
| `chromeRendererPssKb` | {'int': 399} |
| `chromeRenderers` | {'int': 399} |
| `chromeTabs` | {'int': 399} |
| `chromeTabsProbedProfiles` | {'int': 399} |
| `chromeUtilityPssKb` | {'int': 399} |
| `desktopPssKb` | {'int': 399} |
| `hostPssKb` | {'int': 399} |
| `kind` | {'str': 399} |
| `memAvailableKb` | {'int': 399} |
| `memTotalKb` | {'int': 399} |
| `otherPssKb` | {'int': 399} |
| `processes` | {'int': 399} |
| `pssFallbackProcesses` | {'int': 399} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 775} |
| `display` | {'int': 778} |
| `kind` | {'str': 778} |
| `processes` | {'int': 778} |
| `pssKb` | {'int': 778} |
| `rendererMaxPssKb` | {'int': 778} |
| `renderers` | {'int': 778} |
| `tabs` | {'int': 777} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
