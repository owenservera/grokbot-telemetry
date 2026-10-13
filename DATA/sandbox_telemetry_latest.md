# sandbox_telemetry_parse — 2026-10-14 00:29:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1331188 lines=3539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2535 |
| `chrome_profile_sample` | 996 |
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
| `chromeBrowserPssKb` | {'int': 2535} |
| `chromeGpuPssKb` | {'int': 2535} |
| `chromeOtherPssKb` | {'int': 2535} |
| `chromeProcesses` | {'int': 2535} |
| `chromeProfiles` | {'int': 2535} |
| `chromeRendererMaxPssKb` | {'int': 2535} |
| `chromeRendererPssKb` | {'int': 2535} |
| `chromeRenderers` | {'int': 2535} |
| `chromeTabs` | {'int': 2535} |
| `chromeTabsProbedProfiles` | {'int': 2535} |
| `chromeUtilityPssKb` | {'int': 2535} |
| `desktopPssKb` | {'int': 2535} |
| `hostPssKb` | {'int': 2535} |
| `kind` | {'str': 2535} |
| `memAvailableKb` | {'int': 2535} |
| `memTotalKb` | {'int': 2535} |
| `otherPssKb` | {'int': 2535} |
| `processes` | {'int': 2535} |
| `pssFallbackProcesses` | {'int': 2535} |

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
| `cpuMillicores` | {'int': 995} |
| `display` | {'int': 996} |
| `kind` | {'str': 996} |
| `processes` | {'int': 996} |
| `pssKb` | {'int': 996} |
| `rendererMaxPssKb` | {'int': 996} |
| `renderers` | {'int': 996} |
| `tabs` | {'int': 996} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
