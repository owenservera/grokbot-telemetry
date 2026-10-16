# sandbox_telemetry_parse — 2026-10-16 20:14:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=795754 lines=2974
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1970 |
| `memory_sample` | 995 |
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
| `chromeBrowserPssKb` | {'int': 995} |
| `chromeGpuPssKb` | {'int': 995} |
| `chromeOtherPssKb` | {'int': 995} |
| `chromeProcesses` | {'int': 995} |
| `chromeProfiles` | {'int': 995} |
| `chromeRendererMaxPssKb` | {'int': 995} |
| `chromeRendererPssKb` | {'int': 995} |
| `chromeRenderers` | {'int': 995} |
| `chromeTabs` | {'int': 995} |
| `chromeTabsProbedProfiles` | {'int': 995} |
| `chromeUtilityPssKb` | {'int': 995} |
| `desktopPssKb` | {'int': 995} |
| `hostPssKb` | {'int': 995} |
| `kind` | {'str': 995} |
| `memAvailableKb` | {'int': 995} |
| `memTotalKb` | {'int': 995} |
| `otherPssKb` | {'int': 995} |
| `processes` | {'int': 995} |
| `pssFallbackProcesses` | {'int': 995} |

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
| `cpuMillicores` | {'int': 1967} |
| `display` | {'int': 1970} |
| `kind` | {'str': 1970} |
| `processes` | {'int': 1970} |
| `pssKb` | {'int': 1970} |
| `rendererMaxPssKb` | {'int': 1970} |
| `renderers` | {'int': 1970} |
| `tabs` | {'int': 1969} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
